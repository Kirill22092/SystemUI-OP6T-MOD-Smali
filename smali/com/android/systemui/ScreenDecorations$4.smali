.class Lcom/android/systemui/ScreenDecorations$4;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->setupDecorations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$4;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0, p1}, Lcom/android/systemui/ScreenDecorations;->access$600(Lcom/android/systemui/ScreenDecorations;I)V

    return-void
.end method
