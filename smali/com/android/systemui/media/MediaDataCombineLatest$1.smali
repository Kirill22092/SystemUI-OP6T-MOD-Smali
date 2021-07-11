.class public final Lcom/android/systemui/media/MediaDataCombineLatest$1;
.super Ljava/lang/Object;
.source "MediaDataCombineLatest.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataCombineLatest;-><init>(Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaDeviceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDataCombineLatest;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataCombineLatest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaDeviceData;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v2}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceData;

    :cond_1
    invoke-static {p3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p3, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {p3}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v2}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaDeviceData;

    :cond_3
    invoke-static {p3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$update(Lcom/android/systemui/media/MediaDataCombineLatest;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataCombineLatest$1;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$remove(Lcom/android/systemui/media/MediaDataCombineLatest;Ljava/lang/String;)V

    return-void
.end method
