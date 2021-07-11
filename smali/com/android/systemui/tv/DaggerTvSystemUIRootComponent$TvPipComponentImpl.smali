.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/dagger/TvPipComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvPipComponentImpl"
.end annotation


# instance fields
.field private pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)V
    .locals 0

    .line 5373
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5374
    invoke-direct {p0, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 5370
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)V
    .locals 0

    .line 5379
    invoke-static {p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->access$19100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)Lcom/android/systemui/pip/tv/PipControlsView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    return-void
.end method


# virtual methods
.method public getPipControlsViewController()Lcom/android/systemui/pip/tv/PipControlsViewController;
    .locals 4

    .line 5384
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsViewController;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5386
    invoke-static {v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$19200(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5387
    invoke-static {v3}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$19300(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    .line 5388
    invoke-static {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->access$13800(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)Landroid/os/Handler;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/pip/tv/PipControlsViewController;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipManager;Landroid/view/LayoutInflater;Landroid/os/Handler;)V

    return-object v0
.end method
