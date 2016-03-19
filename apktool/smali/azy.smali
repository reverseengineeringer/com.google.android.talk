.class public final Lazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lbba;


# direct methods
.method public constructor <init>(Lbba;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lazy;->a:Lbba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lazy;->a:Lbba;

    const/16 v1, 0x8cb

    invoke-virtual {v0, v1}, Lbba;->a(I)V

    .line 126
    return-void
.end method
