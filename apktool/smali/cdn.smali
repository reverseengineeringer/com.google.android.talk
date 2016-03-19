.class public final Lcdn;
.super Lav;
.source "SourceFile"


# static fields
.field static a:Lenv;

.field static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lav;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lav;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lenu;->b()Lenv;

    move-result-object v0

    .line 45
    sput-object v0, Lcdn;->a:Lenv;

    invoke-static {v0}, Lenu;->a(Lenv;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcdn;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcdn;->getFragmentManager()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    .line 1075
    new-instance v1, Lcdo;

    invoke-direct {v1}, Lcdo;-><init>()V

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcdo;->setTargetFragment(Lav;I)V

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcdo;->a(Lbz;Ljava/lang/String;)I

    .line 51
    return-void
.end method
