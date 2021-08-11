.class public Lcom/android/systemui/stackdivider/DividerModule;
.super Ljava/lang/Object;
.source "DividerModule.java"


# direct methods
.method static provideDivider(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)Lcom/android/systemui/stackdivider/Divider;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/recents/Recents;",
            ">;>;",
            "Lcom/android/systemui/wm/DisplayController;",
            "Lcom/android/systemui/wm/SystemWindows;",
            "Lcom/android/systemui/wm/DisplayImeController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/TransactionPool;",
            ")",
            "Lcom/android/systemui/stackdivider/Divider;"
        }
    .end annotation

    new-instance v9, Lcom/android/systemui/stackdivider/Divider;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/stackdivider/Divider;-><init>(Landroid/content/Context;Ljava/util/Optional;Lcom/android/systemui/wm/DisplayController;Lcom/android/systemui/wm/SystemWindows;Lcom/android/systemui/wm/DisplayImeController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/TransactionPool;)V

    return-object v9
.end method
