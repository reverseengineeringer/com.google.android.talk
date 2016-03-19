.class final Lbhe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhg;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbhd;


# direct methods
.method constructor <init>(Lbhd;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lbhe;->b:Lbhd;

    iput-object p2, p0, Lbhe;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lbgw;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lbhe;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbgw;->a(Landroid/content/Context;I)Lbgw;

    move-result-object v0

    return-object v0
.end method
