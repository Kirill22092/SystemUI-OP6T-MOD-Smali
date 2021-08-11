.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$eLWs6RgXUxZrGIBRjUxV6jB43VY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$eLWs6RgXUxZrGIBRjUxV6jB43VY;->f$0:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$eLWs6RgXUxZrGIBRjUxV6jB43VY;->f$0:Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator$OpHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
