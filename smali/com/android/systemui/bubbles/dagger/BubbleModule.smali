.class public interface abstract Lcom/android/systemui/bubbles/dagger/BubbleModule;
.super Ljava/lang/Object;
.source "BubbleModule.java"


# direct methods
.method public static newBubbleController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    .line 78
    new-instance v23, Lcom/android/systemui/bubbles/BubbleController;

    move-object/from16 v0, v23

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/android/systemui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)V

    return-object v23
.end method
