.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayChangeController$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/IDisplayWindowRotationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayChangeController$1;IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$0:Lcom/android/systemui/wm/DisplayChangeController$1;

    iput p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$1:I

    iput p3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$2:I

    iput p4, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$4:Landroid/view/IDisplayWindowRotationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$0:Lcom/android/systemui/wm/DisplayChangeController$1;

    iget v1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$1:I

    iget v2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$2:I

    iget v3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$3:I

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayChangeController$1$cr2NyoFjnt2r0DMHwy9cOe5oGO4;->f$4:Landroid/view/IDisplayWindowRotationCallback;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/wm/DisplayChangeController$1;->lambda$onRotateDisplay$0$DisplayChangeController$1(IIILandroid/view/IDisplayWindowRotationCallback;)V

    return-void
.end method
