.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-boolean p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-boolean p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$o_Nvl9rNrEnvxnQlEkJ_hCsmmfI;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onOverviewShown$3$OverviewProxyService$1(Z)V

    return-void
.end method
