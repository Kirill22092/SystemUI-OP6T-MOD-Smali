.class public final synthetic Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$0:Landroid/content/Intent;

    iput-boolean p2, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$0:Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$1:Z

    iget-boolean p0, p0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;->f$2:Z

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$5(Landroid/content/Intent;ZZLdagger/Lazy;)V

    return-void
.end method
