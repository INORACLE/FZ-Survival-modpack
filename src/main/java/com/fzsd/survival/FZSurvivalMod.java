package com.fzsd.survival;

import net.minecraft.commands.CommandSourceStack;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerPlayer;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.server.ServerLifecycleHooks;

import java.util.Set;

@Mod(FZSurvivalMod.MODID)
public class FZSurvivalMod {

    public static final String MODID = "fzsd";

    /** 管理员标签：数据包端交互器唯一判定依据。OP2+ 玩家由本模组自动维护此标签。 */
    public static final String ADMIN_TAG = "fzsd.admin";

    /** 判定为管理员的权限等级阈值（OP2 = 权限等级 2）。 */
    public static final int REQUIRED_PERMISSION_LEVEL = 2;

    /** 同步周期：每 20 tick（1 秒）刷一次，兼顾中途授予/取消 OP。 */
    public static final int SYNC_INTERVAL_TICKS = 20;

    private int tickCounter;

    public FZSurvivalMod() {
        MinecraftForge.EVENT_BUS.register(this);
    }

    @SubscribeEvent
    public void onPlayerLoggedIn(PlayerEvent.PlayerLoggedInEvent event) {
        if (event.getEntity() instanceof ServerPlayer player) {
            syncAdminTag(player);
        }
    }

    @SubscribeEvent
    public void onServerTick(TickEvent.ServerTickEvent event) {
        if (event.phase != TickEvent.Phase.END) {
            return;
        }
        if (tickCounter++ % SYNC_INTERVAL_TICKS != 0) {
            return;
        }
        MinecraftServer server = event.getServer();
        if (server == null) {
            return;
        }
        for (ServerPlayer player : server.getPlayerList().getPlayers()) {
            syncAdminTag(player);
        }
    }

    /**
     * 根据玩家真实 OP 权限等级自动维护 fzsd.admin 标签：是 OP2+ 则补标签，否则移除。
     * 这样「拥有 OP2+ 权限即可使用交互器」由模组自动完成，管理员无需手动打 tag。
     */
    private void syncAdminTag(ServerPlayer player) {
        boolean shouldBeAdmin = player.hasPermissions(REQUIRED_PERMISSION_LEVEL);
        Set<String> tags = player.getTags();
        boolean isAdmin = tags.contains(ADMIN_TAG);
        if (isAdmin == shouldBeAdmin) {
            return;
        }
        String action = shouldBeAdmin ? "add" : "remove";
        CommandSourceStack source = player.createCommandSourceStack().withPermission(REQUIRED_PERMISSION_LEVEL);
        player.getServer().getCommands().performPrefixedCommand(
                source, "tag @s " + action + " " + ADMIN_TAG);
    }
}
