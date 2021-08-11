.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;->f$0:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;->f$1:Ljava/lang/Runnable;

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method
