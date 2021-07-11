.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;
.super Ljava/lang/Object;
.source "NotificationRowBinderImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final iconManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            ">;"
        }
    .end annotation
.end field

.field private final lowPriorityInflationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final notifBindPipelineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationMessagingUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private final rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field private final rowInflaterTaskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationMessagingUtilProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notifBindPipelineProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->rowInflaterTaskProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->iconManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;"
        }
    .end annotation

    .line 128
    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowInflaterTask;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/icon/IconManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;"
        }
    .end annotation

    .line 101
    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    .line 102
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 103
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/util/NotificationMessagingUtil;

    .line 104
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 105
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 106
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    .line 107
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 108
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 110
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;

    .line 111
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 112
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    move-object v0, v12

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;-><init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;)V

    return-object v12
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationMessagingUtilProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notifBindPipelineProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->rowContentBindStageProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->notificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->rowInflaterTaskProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->expandableNotificationRowComponentBuilderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->iconManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->lowPriorityInflationHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl;

    move-result-object p0

    return-object p0
.end method
