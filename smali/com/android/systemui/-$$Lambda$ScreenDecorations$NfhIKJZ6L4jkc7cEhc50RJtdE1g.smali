.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;

.field public final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;->f$0:Lcom/android/systemui/ScreenDecorations;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;->f$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$NfhIKJZ6L4jkc7cEhc50RJtdE1g;->f$1:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->lambda$onConfigurationChanged$2$ScreenDecorations(Landroid/content/res/Configuration;)V

    return-void
.end method
