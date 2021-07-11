.class public final Lcom/android/systemui/media/MediaCarouselController$4;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$4\n*L\n1#1,497:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaData$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    .line 174
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController$4;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaData$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :goto_0
    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaData$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$4;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->access$removePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;)V

    return-void
.end method
