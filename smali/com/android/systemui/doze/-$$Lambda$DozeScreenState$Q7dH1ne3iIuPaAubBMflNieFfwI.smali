.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeScreenState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeScreenState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;->f$0:Lcom/android/systemui/doze/DozeScreenState;

    iput p2, p0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;->f$0:Lcom/android/systemui/doze/DozeScreenState;

    iget p0, p0, Lcom/android/systemui/doze/-$$Lambda$DozeScreenState$Q7dH1ne3iIuPaAubBMflNieFfwI;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeScreenState;->lambda$transitionTo$0$DozeScreenState(I)V

    return-void
.end method
