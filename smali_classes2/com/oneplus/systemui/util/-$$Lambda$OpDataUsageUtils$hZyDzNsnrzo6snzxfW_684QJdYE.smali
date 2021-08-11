.class public final synthetic Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/systemui/util/OpDataUsageUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;->f$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    iput-object p2, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;->f$0:Lcom/oneplus/systemui/util/OpDataUsageUtils;

    iget-object p0, p0, Lcom/oneplus/systemui/util/-$$Lambda$OpDataUsageUtils$hZyDzNsnrzo6snzxfW_684QJdYE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/util/OpDataUsageUtils;->lambda$refreshUI$0$OpDataUsageUtils(Ljava/lang/String;)V

    return-void
.end method
