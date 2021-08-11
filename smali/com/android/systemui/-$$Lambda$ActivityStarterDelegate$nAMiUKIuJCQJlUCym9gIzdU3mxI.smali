.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$nAMiUKIuJCQJlUCym9gIzdU3mxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$nAMiUKIuJCQJlUCym9gIzdU3mxI;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$nAMiUKIuJCQJlUCym9gIzdU3mxI;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ldagger/Lazy;

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postQSRunnableDismissingKeyguard$9(Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method
