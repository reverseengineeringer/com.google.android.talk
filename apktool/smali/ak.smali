.class final Lak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lak;->a:[Ljava/lang/String;

    iput-object p2, p0, Lak;->b:Landroid/app/Activity;

    iput p3, p0, Lak;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 322
    iget-object v0, p0, Lak;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [I

    .line 324
    iget-object v0, p0, Lak;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 325
    iget-object v0, p0, Lak;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 327
    iget-object v0, p0, Lak;->a:[Ljava/lang/String;

    array-length v4, v0

    .line 328
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 329
    iget-object v5, p0, Lak;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v0

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lak;->b:Landroid/app/Activity;

    check-cast v0, Lal;

    iget v2, p0, Lak;->c:I

    iget-object v3, p0, Lak;->a:[Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lal;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 335
    return-void
.end method
