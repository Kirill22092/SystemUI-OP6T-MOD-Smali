.class final Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;
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
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->access$getDismissCallback$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
