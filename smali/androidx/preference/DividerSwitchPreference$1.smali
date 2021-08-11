.class Landroidx/preference/DividerSwitchPreference$1;
.super Ljava/lang/Object;
.source "DividerSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/DividerSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/DividerSwitchPreference;


# direct methods
.method constructor <init>(Landroidx/preference/DividerSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-interface {p1, v0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Landroidx/preference/DividerSwitchPreference$1;->this$0:Landroidx/preference/DividerSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
