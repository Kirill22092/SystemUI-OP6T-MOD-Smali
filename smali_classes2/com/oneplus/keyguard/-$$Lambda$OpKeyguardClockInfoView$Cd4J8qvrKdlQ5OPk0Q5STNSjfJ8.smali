.class public final synthetic Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    iput p2, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$1:I

    iput-object p3, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    iget v1, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$1:I

    iget-object v2, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/keyguard/-$$Lambda$OpKeyguardClockInfoView$Cd4J8qvrKdlQ5OPk0Q5STNSjfJ8;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->lambda$updateSliceView$6$OpKeyguardClockInfoView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
