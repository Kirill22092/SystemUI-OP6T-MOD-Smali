.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarComponentImpl"
.end annotation


# instance fields
.field private builderProvider:Lcom/android/systemui/statusbar/FlingAnimationUtils_Builder_Factory;

.field private getNotificationPanelViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private notificationPanelViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field private statusBarWindowViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)V
    .locals 0

    .line 5210
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5211
    invoke-direct {p0, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 5199
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)V
    .locals 33

    move-object/from16 v0, p0

    .line 5216
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->access$17300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    .line 5217
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;->access$17300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentBuilder;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->statusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 5220
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetNotificationPanelViewFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetNotificationPanelViewFactory;

    move-result-object v1

    .line 5219
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    .line 5222
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5224
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 5223
    invoke-static {v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils_Builder_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FlingAnimationUtils_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->builderProvider:Lcom/android/systemui/statusbar/FlingAnimationUtils_Builder_Factory;

    .line 5225
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5229
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5230
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5231
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5232
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5233
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5234
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5235
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5238
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5239
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5240
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5242
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5243
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5244
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5245
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5246
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$6700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5247
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v18

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5248
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v19

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5249
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$16400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v20

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5250
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17900(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Lcom/android/systemui/dagger/SystemServicesModule_ProvideDisplayIdFactory;

    move-result-object v21

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5251
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v22

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5252
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$5500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v23

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5253
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v24

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5254
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v25

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5255
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v26

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->builderProvider:Lcom/android/systemui/statusbar/FlingAnimationUtils_Builder_Factory;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5257
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v28

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5258
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v29

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5259
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v30

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5260
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v31

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5261
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v32

    .line 5227
    invoke-static/range {v2 .. v32}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;

    move-result-object v1

    .line 5226
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 5297
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .locals 25

    move-object/from16 v0, p0

    .line 5266
    new-instance v23, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5267
    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$14000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5268
    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5269
    invoke-static {v4}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5270
    invoke-static {v5}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5271
    invoke-static {v6}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5272
    invoke-static {v7}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$15400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5273
    invoke-static {v8}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$3600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5274
    invoke-static {v9}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/tuner/TunerService;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5275
    invoke-static {v10}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5276
    invoke-static {v11}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$9400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5277
    invoke-static {v12}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$2700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5278
    invoke-static {v13}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5279
    invoke-static {v14}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$17600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/doze/DozeLog;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5280
    invoke-static {v15}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11500(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v15

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5281
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5282
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$7200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5283
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$11000(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/dock/DockManager;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5284
    invoke-static {v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18600(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->statusBarWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 5286
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5287
    invoke-static {v0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$18700(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;-><init>(Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;)V

    return-object v23
.end method

.method public getStatusBarWindowController()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 5292
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$StatusBarComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$4400(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method
