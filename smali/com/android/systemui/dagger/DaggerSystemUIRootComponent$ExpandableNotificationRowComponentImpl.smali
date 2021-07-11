.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExpandableNotificationRowComponentImpl"
.end annotation


# instance fields
.field private activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

.field private expandableNotificationRowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableNotificationRowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private expandableOutlineViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

.field private expandableViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

.field private notificationEntryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private onDismissRunnableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onExpandClickListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

.field private provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

.field private provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

.field private rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V
    .locals 0

    .line 5090
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5091
    invoke-direct {p0, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 5056
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)V
    .locals 21

    move-object/from16 v0, p0

    .line 5097
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$16200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 5099
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    .line 5100
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    .line 5101
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableOutlineViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    .line 5103
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5107
    invoke-static {v3}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$16300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5108
    invoke-static {v4}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    .line 5104
    invoke-static {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    .line 5109
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$16400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->notificationEntryProvider:Ljavax/inject/Provider;

    .line 5112
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 5113
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5116
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$16500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 5115
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    .line 5118
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    .line 5120
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    .line 5121
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$16600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    .line 5122
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$16700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    .line 5123
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;->access$16800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentBuilder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onDismissRunnableProvider:Ljavax/inject/Provider;

    .line 5124
    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5129
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5130
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5131
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$16900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5134
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5135
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5137
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5138
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5140
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5141
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5142
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->onDismissRunnableProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5144
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5146
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$17000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    .line 5126
    invoke-static/range {v2 .. v20}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;

    move-result-object v1

    .line 5125
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    .line 5151
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method
