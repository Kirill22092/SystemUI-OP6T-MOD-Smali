.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$fg71CWqbbHGuQEcI_sx-8tNWcJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$fg71CWqbbHGuQEcI_sx-8tNWcJg;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$fg71CWqbbHGuQEcI_sx-8tNWcJg;->f$0:Z

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->lambda$updateVisibility$3(ZLjava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
