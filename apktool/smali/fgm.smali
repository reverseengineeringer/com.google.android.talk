.class public Lfgm;
.super Lfgj;


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lfgj;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lfgm;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lfgm;->a:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfgm;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method
