.class final Ljtp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic c:Ljto;


# direct methods
.method constructor <init>(Ljto;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Ljtp;->c:Ljto;

    iput-object p2, p0, Ljtp;->a:Ljava/lang/String;

    iput-object p3, p0, Ljtp;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Ljtp;->c:Ljto;

    .line 1040
    iget-object v0, v0, Ljto;->a:Ljts;

    .line 218
    iget-object v1, p0, Ljtp;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljts;->a(Ljava/lang/String;)V

    .line 220
    :try_start_0
    iget-object v0, p0, Ljtp;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Ljtp;->a:Ljava/lang/String;

    invoke-static {v0}, Ljud;->b(Ljava/lang/String;)V

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljtp;->a:Ljava/lang/String;

    invoke-static {v1}, Ljud;->b(Ljava/lang/String;)V

    throw v0
.end method
