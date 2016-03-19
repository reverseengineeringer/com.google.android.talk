.class public final Lazv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldvv;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbba;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ldvv;ILjava/lang/String;Lbba;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lazv;->a:Ldvv;

    iput p2, p0, Lazv;->b:I

    iput-object p3, p0, Lazv;->c:Ljava/lang/String;

    iput-object p4, p0, Lazv;->d:Lbba;

    iput-object p5, p0, Lazv;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lazv;->a:Ldvv;

    iget v1, p0, Lazv;->b:I

    iget-object v2, p0, Lazv;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1, v2}, Ldvv;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lazv;->d:Lbba;

    const/16 v2, 0x8ca

    invoke-virtual {v1, v2}, Lbba;->a(I)V

    .line 55
    iget-object v1, p0, Lazv;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
