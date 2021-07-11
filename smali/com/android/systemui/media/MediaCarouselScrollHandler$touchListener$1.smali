.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 174
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$onInterceptTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 173
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$onTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
