.class final Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;->onFling(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;->$view:Landroid/view/View;

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
