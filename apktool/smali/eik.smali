.class final Leik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leie;


# direct methods
.method constructor <init>(Leie;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Leik;->a:Leie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1982
    invoke-static {}, Leie;->a()Leie;

    move-result-object v1

    .line 1988
    :try_start_0
    invoke-virtual {v1}, Leie;->c()V

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2963
    const-string v2, "GmsPeopleCache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2965
    const-string v2, "last_refresh_thumbprint"

    const-string v3, "N/A"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1991
    iget-object v2, v1, Leie;->g:Ljava/lang/String;

    .line 1997
    const-string v3, "GmsPeopleCache: old Thumbprint: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1998
    :goto_0
    const-string v3, "GmsPeopleCache: current Thumbprint: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4036
    :goto_1
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 2001
    const-string v4, "babel_refresh_contacts_derived_data_use_thumbprint"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 2005
    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 2010
    invoke-static {v0}, Lbfz;->d(Landroid/content/Context;)V

    .line 2016
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 5971
    const-string v3, "GmsPeopleCache"

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5973
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5974
    const-string v3, "last_refresh_timestamp"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5975
    const-string v3, "last_refresh_thumbprint"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5976
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    invoke-virtual {v1}, Leie;->c()V

    .line 2019
    return-void

    .line 1997
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2018
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Leie;->c()V

    throw v0

    .line 1998
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
