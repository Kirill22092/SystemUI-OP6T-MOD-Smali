.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$z0kELVO5O0J_Wr2PuJE1CflZShk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$z0kELVO5O0J_Wr2PuJE1CflZShk;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$z0kELVO5O0J_Wr2PuJE1CflZShk;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->lambda$z0kELVO5O0J_Wr2PuJE1CflZShk(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
