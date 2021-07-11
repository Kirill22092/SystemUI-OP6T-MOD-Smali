.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$7wUFTc4hTjTQbo3BPlrl8V6q3tU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$7wUFTc4hTjTQbo3BPlrl8V6q3tU;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$2$7wUFTc4hTjTQbo3BPlrl8V6q3tU;->f$0:Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager$2;->lambda$onActivityUnpinned$1(Landroid/content/ComponentName;)V

    return-void
.end method
