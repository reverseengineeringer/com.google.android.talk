.class final Ldgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Ldgk;->b:Ldfq;

    iput-object p2, p0, Ldgk;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Ldgk;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgz;

    invoke-virtual {v0}, Ldgz;->a()V

    .line 459
    return-void
.end method
