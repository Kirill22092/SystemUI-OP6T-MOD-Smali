.class public final synthetic Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$oi57qYsuU97hQX_k3GdwhheueLc;->f$0:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->lambda$handleSetListening$2(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method
