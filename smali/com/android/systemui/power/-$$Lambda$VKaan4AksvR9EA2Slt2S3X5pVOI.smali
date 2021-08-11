.class public final synthetic Lcom/android/systemui/power/-$$Lambda$VKaan4AksvR9EA2Slt2S3X5pVOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$VKaan4AksvR9EA2Slt2S3X5pVOI;->f$0:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/-$$Lambda$VKaan4AksvR9EA2Slt2S3X5pVOI;->f$0:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
