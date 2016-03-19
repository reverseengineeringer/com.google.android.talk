.class final Lgof;
.super Landroid/database/CursorWrapper;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/16 v0, 0x64

    iput v0, p0, Lgof;->a:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget v1, p0, Lgof;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
