export default function Button(props: React.ComponentProps<"button">) {
    let classes = "py-1 px-2 text-white bg-blue-500 rounded-md hover:bg-blue-600 active:bg-blue-500"
    if (props.className) {
        classes += ` ${props.className}`
        delete props.className
    }

    return (
        <button className={classes} {...props} />
    )
}
