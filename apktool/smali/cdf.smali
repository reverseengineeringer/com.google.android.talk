.class final Lcdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcde;


# direct methods
.method constructor <init>(Lcde;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcdf;->a:Lcde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcdf;->a:Lcde;

    invoke-virtual {v0}, Lcde;->a()V

    .line 64
    return-void
.end method
