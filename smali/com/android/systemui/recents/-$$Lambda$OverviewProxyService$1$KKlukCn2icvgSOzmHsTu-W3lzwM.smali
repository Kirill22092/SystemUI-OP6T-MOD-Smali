.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$KKlukCn2icvgSOzmHsTu-W3lzwM;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startAssistant$8$OverviewProxyService$1(Landroid/os/Bundle;)V

    return-void
.end method
