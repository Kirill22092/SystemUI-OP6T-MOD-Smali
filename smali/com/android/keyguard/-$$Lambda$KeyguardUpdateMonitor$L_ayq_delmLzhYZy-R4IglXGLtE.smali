.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$L_ayq_delmLzhYZy-R4IglXGLtE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$L_ayq_delmLzhYZy-R4IglXGLtE;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$L_ayq_delmLzhYZy-R4IglXGLtE;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$L_ayq_delmLzhYZy-R4IglXGLtE;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$L_ayq_delmLzhYZy-R4IglXGLtE;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$isFaceAuthEnabledForUser$2$KeyguardUpdateMonitor(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
