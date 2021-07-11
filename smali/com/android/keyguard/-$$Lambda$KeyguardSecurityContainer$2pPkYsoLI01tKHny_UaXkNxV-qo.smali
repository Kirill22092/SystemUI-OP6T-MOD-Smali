.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$2pPkYsoLI01tKHny_UaXkNxV-qo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$2pPkYsoLI01tKHny_UaXkNxV-qo;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardSecurityContainer$2pPkYsoLI01tKHny_UaXkNxV-qo;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->lambda$showPrimarySecurityScreen$0$KeyguardSecurityContainer()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method
