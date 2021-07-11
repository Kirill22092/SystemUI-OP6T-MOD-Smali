.class public final synthetic Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

.field public final synthetic f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$5nEYjT7ZyAro48Qi-bsR2yyNFwM;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;

    invoke-static {v0, p0}, Lcom/android/keyguard/CarrierTextController;->lambda$postToCallback$5(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;Lcom/android/keyguard/CarrierTextController$CarrierTextCallbackInfo;)V

    return-void
.end method
