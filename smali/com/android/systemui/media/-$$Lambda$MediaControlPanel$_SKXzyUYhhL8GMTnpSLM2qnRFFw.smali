.class public final synthetic Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$_SKXzyUYhhL8GMTnpSLM2qnRFFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$_SKXzyUYhhL8GMTnpSLM2qnRFFw;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/-$$Lambda$MediaControlPanel$_SKXzyUYhhL8GMTnpSLM2qnRFFw;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bind$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
