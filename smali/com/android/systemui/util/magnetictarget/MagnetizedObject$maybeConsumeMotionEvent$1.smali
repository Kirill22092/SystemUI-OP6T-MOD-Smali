.class final Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MagnetizedObject.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $flungToTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

.field final synthetic this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    iput-object p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->$flungToTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getMagnetListener()Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->$flungToTarget:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->access$setTargetObjectIsStuckTo$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;->this$0:Lcom/android/systemui/util/magnetictarget/MagnetizedObject;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->access$vibrateIfEnabled(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;I)V

    return-void
.end method
