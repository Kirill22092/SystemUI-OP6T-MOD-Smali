.class final Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/systemui/media/MediaData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaData;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;->accept(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/media/MediaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->access$removePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$recreatePlayers$1;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/media/MediaCarouselController;->access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method
