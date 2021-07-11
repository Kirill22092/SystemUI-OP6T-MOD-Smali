.class Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;
.super Ljava/lang/Object;
.source "DaggerTvSystemUIRootComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;->initialize4(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;)V
    .locals 0

    .line 3551
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;
    .locals 2

    .line 3554
    new-instance v0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;->this$0:Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$TvPipComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent;Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 3551
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvSystemUIRootComponent$4;->get()Lcom/android/systemui/pip/tv/dagger/TvPipComponent$Builder;

    move-result-object p0

    return-object p0
.end method
