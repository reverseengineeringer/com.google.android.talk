.class final Lcbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcbr;


# direct methods
.method constructor <init>(Lcbr;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcbs;->a:Lcbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcbs;->a:Lcbr;

    invoke-virtual {v0}, Lcbr;->finish()V

    .line 227
    return-void
.end method
