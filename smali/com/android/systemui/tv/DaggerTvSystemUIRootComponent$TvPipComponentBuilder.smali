.class final Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvPipComponentBuilder"
.end annotation


# instance fields
.field private pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    .line 5352
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V
    .locals 0

    .line 5352
    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;)Lcom/android/systemui/pip/tv/PipControlsView;
    .locals 0

    .line 5352
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/systemui/pip/tv/dagger/TvPipComponent;
    .locals 3

    .line 5357
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    if-eqz v0, :cond_0

    .line 5360
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0

    .line 5358
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic pipControlsView(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;
    .locals 0

    .line 5352
    invoke-virtual {p0, p1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->pipControlsView(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;

    return-object p0
.end method

.method public pipControlsView(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;
    .locals 0

    .line 5365
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/pip/tv/PipControlsView;

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;->pipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    return-object p0
.end method
