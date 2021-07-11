.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$EJt8cxa32l15bNtCDpbH4THSAbg;->f$1:Landroid/content/SharedPreferences;

    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$seedFavorites$2$GlobalActionsDialog(Landroid/content/SharedPreferences;Lcom/android/systemui/controls/controller/SeedResponse;)V

    return-void
.end method
