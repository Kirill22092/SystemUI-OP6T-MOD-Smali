.class public final synthetic Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/CarrierTextController;

.field public final synthetic f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/CarrierTextController;Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;->f$0:Lcom/android/keyguard/CarrierTextController;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;->f$0:Lcom/android/keyguard/CarrierTextController;

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$CarrierTextController$C6go0e-jA3BYgQhMyia20ELR8OQ;->f$1:Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextController;->lambda$setListening$4$CarrierTextController(Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;)V

    return-void
.end method
