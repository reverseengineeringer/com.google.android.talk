.class final Lewc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lewb;


# direct methods
.method constructor <init>(Lewb;Landroid/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lewc;->b:Lewb;

    iput-object p2, p0, Lewc;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lewc;->a:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 57
    iget-object v1, p0, Lewc;->b:Lewb;

    invoke-virtual {v1}, Lewb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v1

    invoke-virtual {v1, v0}, Leut;->a(Z)V

    .line 59
    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lewc;->b:Lewb;

    invoke-virtual {v0}, Lewb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lewi;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lewi;

    .line 62
    iget-object v1, p0, Lewc;->b:Lewb;

    invoke-virtual {v1}, Lewb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lewc;->b:Lewb;

    invoke-interface {v0, v1, v2}, Lewi;->a(Landroid/content/Context;Lewj;)V

    .line 66
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lewc;->b:Lewb;

    .line 1036
    invoke-virtual {v0}, Lewb;->b()V

    goto :goto_0
.end method
