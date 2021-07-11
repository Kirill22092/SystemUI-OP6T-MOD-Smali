.class public final Lcom/android/systemui/media/MediaDataCombineLatest$2;
.super Ljava/lang/Object;
.source "MediaDataCombineLatest.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDeviceManager$Listener;


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

    .line 49
    iput-object p1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$2;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataCombineLatest$2;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$remove(Lcom/android/systemui/media/MediaDataCombineLatest;Ljava/lang/String;)V

    return-void
.end method

.method public onMediaDeviceChanged(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaDeviceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataCombineLatest$2;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v0}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataCombineLatest$2;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$getEntries$p(Lcom/android/systemui/media/MediaDataCombineLatest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/media/MediaDataCombineLatest$2;->this$0:Lcom/android/systemui/media/MediaDataCombineLatest;

    invoke-static {p0, p1, p1}, Lcom/android/systemui/media/MediaDataCombineLatest;->access$update(Lcom/android/systemui/media/MediaDataCombineLatest;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
