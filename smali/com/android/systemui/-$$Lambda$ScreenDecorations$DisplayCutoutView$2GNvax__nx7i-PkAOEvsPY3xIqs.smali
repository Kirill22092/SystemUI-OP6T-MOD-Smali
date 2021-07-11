.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;->f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;->f$1:I

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;->f$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$DisplayCutoutView$2GNvax__nx7i-PkAOEvsPY3xIqs;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->lambda$new$0$ScreenDecorations$DisplayCutoutView(I)V

    return-void
.end method
