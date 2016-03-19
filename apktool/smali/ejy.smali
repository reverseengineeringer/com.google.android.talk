.class final Lejy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Leju;


# direct methods
.method constructor <init>(Leju;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lejy;->a:Leju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 173
    check-cast p2, Ljava/lang/Boolean;

    .line 1015
    const/4 v0, 0x0

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lejy;->a:Leju;

    .line 1043
    iget-object v1, v1, Leju;->context:Lill;

    .line 174
    iget-object v2, p0, Lejy;->a:Leju;

    .line 2043
    iget-object v2, v2, Leju;->a:Lbfd;

    .line 174
    invoke-static {v1, v2, v0}, Lbff;->c(Landroid/content/Context;Lbfd;Z)V

    .line 175
    const/4 v0, 0x1

    return v0
.end method
