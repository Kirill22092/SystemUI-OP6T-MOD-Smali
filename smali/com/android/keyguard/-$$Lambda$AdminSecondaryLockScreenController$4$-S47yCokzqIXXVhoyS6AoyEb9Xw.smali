.class public final synthetic Lcom/android/keyguard/-$$Lambda$AdminSecondaryLockScreenController$4$-S47yCokzqIXXVhoyS6AoyEb9Xw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$AdminSecondaryLockScreenController$4$-S47yCokzqIXXVhoyS6AoyEb9Xw;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$4;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$AdminSecondaryLockScreenController$4$-S47yCokzqIXXVhoyS6AoyEb9Xw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$AdminSecondaryLockScreenController$4$-S47yCokzqIXXVhoyS6AoyEb9Xw;->f$0:Lcom/android/keyguard/AdminSecondaryLockScreenController$4;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$AdminSecondaryLockScreenController$4$-S47yCokzqIXXVhoyS6AoyEb9Xw;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->lambda$surfaceCreated$0$AdminSecondaryLockScreenController$4(I)V

    return-void
.end method
