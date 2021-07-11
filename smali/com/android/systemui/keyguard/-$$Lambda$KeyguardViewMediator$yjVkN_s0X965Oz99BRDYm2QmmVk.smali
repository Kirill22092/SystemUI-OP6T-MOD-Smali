.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$yjVkN_s0X965Oz99BRDYm2QmmVk;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$notifyDefaultDisplayCallbacks$8$KeyguardViewMediator(Z)V

    return-void
.end method
