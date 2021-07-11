.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$K7lft0lbYxYv1XYt4OjLQAAUcDg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactory$ContextAvailableCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/SystemUIAppComponentFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIAppComponentFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$K7lft0lbYxYv1XYt4OjLQAAUcDg;->f$0:Lcom/android/systemui/SystemUIAppComponentFactory;

    return-void
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$SystemUIAppComponentFactory$K7lft0lbYxYv1XYt4OjLQAAUcDg;->f$0:Lcom/android/systemui/SystemUIAppComponentFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactory;->lambda$instantiateApplicationCompat$0$SystemUIAppComponentFactory(Landroid/content/Context;)V

    return-void
.end method
