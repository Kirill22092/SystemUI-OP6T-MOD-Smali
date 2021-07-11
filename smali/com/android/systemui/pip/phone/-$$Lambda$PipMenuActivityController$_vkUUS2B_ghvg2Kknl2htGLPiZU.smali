.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(IZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$0:I

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$0:I

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$_vkUUS2B_ghvg2Kknl2htGLPiZU;->f$2:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->lambda$onMenuStateChanged$2(IZLjava/lang/Runnable;Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method
